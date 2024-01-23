/**
 * CPerson类
 * public继承自IPerson类，同时private继承自PersonInfo类
*/

#include "IPerson.h"
#include "PersonInfo.h"

class CPerson:
    public IPerson,         // public继承，表示is-a关系
    private PersonInfo      // private继承，表示is-implemented-in-terms-of关系
{
public:
    explicit CPerson(DatabaseID dbId);
    virtual std::string name() const override;
    virtual std::string birthDate() const override;

private:
    // 重写界限函数
    virtual const char* valueDelimOpen() const override;
    virtual const char* valueDelimClose() const override;
};