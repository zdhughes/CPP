#ifndef _CUSTOMEXCEPTION_H_
#define _CUSTOMEXCEPTION_H_

#include <string>
#include <ostream>
#include <exception>


class customException : public std::exception {
 public:
  customException(const std::string& message="<UNDEFINED>") : std::exception(), _message(message) {}
  customException(const customException& error) : std::exception(error), _message(error._message) {}
  customException& operator=(const customException& error) { _assign(error); return *this; }
  virtual ~customException(void) throw() {}
  virtual const char* what(void) const throw() { return _message.c_str(); }

 protected:
  ///////////////////////
  // Protected Members //
  ///////////////////////
  void _assign(const customException& error)  {  _message = error._message; }

 private:
  //////////////////////////
  // Private Data Members //
  //////////////////////////
  std::string _message;
};


#endif /* _CUSTOMEXCEPTION_H_ */
