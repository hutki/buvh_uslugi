<?PHP
 
 
 
/**
 * session storage class
 */
 
abstract class storage {
 
 
    /**
     * initialization session storage
     */
 
    public function init() {
 
        if (!isset($_SESSION['__storage'])) {
            $_SESSION['__storage'] = array();
        }
 
    }
 
 
    /**
     * save data into storage
     */
 
    public function write($key, $data) {
        $_SESSION['__storage'][$key] = $data;
    }
 
 
    /**
     * remove storage data with key
     */
 
    public function remove($key) {
 
        if (isset($_SESSION['__storage'][$key])) {
            unset($_SESSION['__storage'][$key]);
        }
 
    }
 
 
    /**
     * read storage data,
     * return data or null if not exists data
     */
 
    public function read($key) {
        return self::exists($key) ? $_SESSION['__storage'][$key] : null;
    }
 
 
    /**
     * read and unset (like shift stack) storage data,
     * return data or null if not exists data
     */
 
    public function shift($key) {
 
        $data = self::read($key);
        self::remove($key);
        return $data;
 
    }
 
 
    /**
     * check for exsists data
     */
 
    public function exists($key) {
        return isset($_SESSION['__storage'][$key]);
    }
 
 
    /**
     * clear all storage data
     */
 
    public function clear() {
        $_SESSION['__storage'] = array();
    }
 
 
}
