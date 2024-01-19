/**
 * 提供若干有用的函数，可用以实现IPerson接口
*/
constexpr unsigned long MAX_NAME_BUF_LEN = 64;

class DatabaseID {};

class PersonInfo {
public:
    explicit PersonInfo(DatabaseID dbId);
    virtual ~PersonInfo();
    virtual const char* theName() const;
    virtual const char* theBirthDate() const;
    virtual const char* valueDelimOpen() const;
    virtual const char* valueDelimClose() const;
};