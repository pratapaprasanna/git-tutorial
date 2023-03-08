import unittest
import calc

class PrimesTestCase(unittest.TestCase):
    """Tests for `primes.py`."""

    def test_add_positive(self):
        """Is five successfully determined to be prime?"""
        self.assertEqual(9, calc.add(5, 4))

    def test_add_negative(self):
        """Is -1 successfully determined to be not prime?"""
        self.assertNotEqual(7, calc.add(5, 3))

if __name__ == '__main__':
    unittest.main()
