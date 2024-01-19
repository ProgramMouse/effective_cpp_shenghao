  /** If you write your own error handler to be called by @c new, it must
   *  be of this type.  */
  typedef void (*new_handler)();

  /// Takes a replacement handler as the argument, returns the
  /// previous handler.
  new_handler set_new_handler(new_handler) throw();

#if __cplusplus >= 201103L
  /// Return the current new handler.
  new_handler get_new_handler() noexcept;
#endif