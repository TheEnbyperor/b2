#ifndef HEADER_B805CD134B3642B4926B919E556B2ED5
#define HEADER_B805CD134B3642B4926B919E556B2ED5

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

#include <string>
#include <vector>
#include <functional>
#include <memory>

class MessageList;

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

void FailureMessageBox(const std::string &title,const std::shared_ptr<MessageList> &message_list,size_t num_messages=10);

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

#if SYSTEM_OSX

// There's probably somewhere slightly better these could go. But it would
// only be slightly better.

// Returns the result of [NSApp keyWindow].
void *GetKeyWindow();

// Returns [NSEvent doubleClickInterval].
double GetDoubleClickIntervalSeconds();

#endif

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

class RecentPaths {
public:
    RecentPaths();

    void AddPath(const char *path);

    size_t GetNumPaths() const;

    // Most recently used file, if any, is at index 0.
    const std::string &GetPathByIndex(size_t index) const;

    void RemovePathByIndex(size_t index);
protected:
private:
    size_t m_max_num_paths;
    std::vector<std::string> m_paths;
};

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

void ForEachRecentPaths(std::function<void(const std::string &,const RecentPaths &)> fun);
RecentPaths *GetRecentPathsByTag(const std::string &tag);
void SetRecentPathsByTag(std::string tag,RecentPaths recents);

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

class SelectorDialog {
public:
    explicit SelectorDialog(std::string tag);
    virtual ~SelectorDialog()=0;

    // return value is valid only until next LoadRecentPathsSettings.
    RecentPaths *GetRecentPaths() const;
    //void SetRecentPathsTag(std::string tag);
    void AddLastPathToRecentPaths();

    bool Open(std::string *path);
protected:
    virtual const char *HandleOpen()=0;

    std::string m_last_path;
private:
    std::string m_recent_paths_tag;
};

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

class FileDialog:
    public SelectorDialog
{
public:
    explicit FileDialog(std::string tag,int noc_flags);

    // PATTERNS should be ;-separated list of patterns.
    void AddFilter(std::string title,const std::string &patterns);
    void AddAllFilesFilter();

    int GetFilterIndex() const;
protected:
    const char *HandleOpen() override;
private:
    std::string m_default_dir;
    std::string m_default_name;
    std::string m_filters;
    int m_noc_flags=0;
    int m_filter_index=-1;
};

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

class OpenFileDialog:
    public FileDialog
{
public:
    explicit OpenFileDialog(std::string tag);
protected:
private:
};

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

class SaveFileDialog:
    public FileDialog
{
public:
    explicit SaveFileDialog(std::string tag);
protected:
private:
};

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

class FolderDialog:
    public SelectorDialog
{
public:
    explicit FolderDialog(std::string tag);
protected:
    const char *HandleOpen() override;
private:
};

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

#endif
