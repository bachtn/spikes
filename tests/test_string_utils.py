import pytest

from spikes.string_utils import reverse_string


@pytest.mark.parametrize("input_string, reversed_string_expected", [
    ("Hello World", "dlroW olleH"),
    ("A", "A"),
    ("", "")
])
def test_is_palindrome(input_string, reversed_string_expected):
    reversed_string = reverse_string(input_string)

    assert reversed_string == reversed_string_expected
