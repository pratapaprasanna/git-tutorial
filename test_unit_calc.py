import unittest
import calc


class CalcTestCase(unittest.TestCase):
    """Tests for `calc.py`."""

    def test_add_positive(self):
        """Is add giving 9 upon sending 5 and 4"""
        self.assertEqual(9, calc.add(5, 4))

    def test_add_negative(self):
        """Is 5, 3 doesnt give 7"""
        self.assertNotEqual(7, calc.add(5, 3))


if __name__ == "__main__":
    unittest.main()
