#ifndef HEADER_F219CA200C9D4750A635E975749B8322
#define HEADER_F219CA200C9D4750A635E975749B8322

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

#include <beeb/DiscImage.h>
#include <vector>

class Messages;
class FileDialog;

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

// Both sides have the same geometry - the BBC disc image formats
// aren't very clever.

struct DiscGeometry {
    bool double_sided=false;
    bool double_density=false;
    size_t num_tracks=0;
    size_t sectors_per_track=0;
    size_t bytes_per_sector=0;

    DiscGeometry();
    DiscGeometry(size_t num_tracks,size_t sectors_per_track,size_t bytes_per_sector,bool double_sided=false,bool double_density=false);

    size_t GetTotalNumBytes() const;
};

bool operator==(const DiscGeometry &a,const DiscGeometry &b);
bool operator!=(const DiscGeometry &a,const DiscGeometry &b);

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

void AddDiscImagesFileDialogFilter(FileDialog *fd);

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

class MemoryDiscImage:
    public DiscImage
{
public:
    static const std::string LOAD_METHOD_FILE;
    static const std::string LOAD_METHOD_ZIP;

    static const uint8_t FILL_BYTE;

    static std::unique_ptr<MemoryDiscImage> LoadFromBuffer(std::string path,std::string load_method,const void *data,size_t data_size,const DiscGeometry &geometry,Messages *msg);

    // If the load succeeds, the method will be LOAD_METHOD_FILE or
    // LOAD_METHOD_ZIP.
    static std::unique_ptr<MemoryDiscImage> LoadFromFile(std::string path,Messages *msg);

    static bool FindDiscGeometryFromFileDetails(DiscGeometry *geometry,const char *file_name,size_t file_size,Messages *msg);
    static bool FindDiscGeometryFromMIMEType(DiscGeometry *geometry,const char *mime_type,size_t file_size,Messages *msg);

    ~MemoryDiscImage();

    MemoryDiscImage(const MemoryDiscImage &)=delete;
    MemoryDiscImage &operator=(const MemoryDiscImage &)=delete;

    MemoryDiscImage(MemoryDiscImage &&)=delete;
    MemoryDiscImage &operator=(MemoryDiscImage &&)=delete;

    bool CanClone() const override;
    std::shared_ptr<DiscImage> Clone() const override;

    std::string GetHash() const override;

    std::string GetName() const override;
    void SetName(std::string name) override;
    std::string GetLoadMethod() const override;
    void SetLoadMethod(std::string load_method) override;
    std::string GetDescription() const override;
    void AddFileDialogFilter(FileDialog *fd) const override;
    bool SaveToFile(const std::string &file_name,Messages *msg) const override;

    bool Read(uint8_t *value,uint8_t side,uint8_t track,uint8_t sector,size_t offset) const override;
    bool Write(uint8_t side,uint8_t track,uint8_t sector,size_t offset,uint8_t value) override;
    bool GetDiscSectorSize(size_t *size,uint8_t side,uint8_t track,uint8_t sector,bool double_density) const override;
    bool IsWriteProtected() const override;
protected:
private:
    struct Data;

    Data *m_data;
    std::string m_name;
    std::string m_load_method;

    MemoryDiscImage();
    MemoryDiscImage(std::string path,std::string load_method,const void *data,size_t data_size,const DiscGeometry &geometry);

    // doesn't add a new ref - caller must arrange this.
    MemoryDiscImage(Data *data,std::string name,std::string load_method);

    // Returns true if the address is valid, and *index is then the
    // address to use - though it may be past the end of the data if
    // the disc image data is short.
    bool GetIndex(size_t *index,uint8_t side,uint8_t track,uint8_t sector,size_t offset) const;
    void MakeDataUnique();
    void ReleaseData(Data **data_ptr);
};

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

#endif
