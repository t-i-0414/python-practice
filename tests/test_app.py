from typing import Any

from app import main


def test_main_output(capsys: Any) -> None:
    main()
    captured = capsys.readouterr()
    assert captured.out.strip() == "Hello from python-practice!"
