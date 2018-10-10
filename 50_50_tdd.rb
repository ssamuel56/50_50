require_relative '50_50.rb'
require 'minitest/autorun'

class Testing < Minitest::Test
  def test_1
    assert_equal(1, 1)
  end
  def test_1_for_a_match_1_ticket
    tickets = 1
    my_numbers = ["4752"]
    winners = ["7850", "1425", "6472", "4074", "9794", "1321", "3293", "4363", "8627", "5520"]
    assert_equal(0, how_many_match(my_numbers, winners))
  end
  def test_2_for_a_match_1_ticket
    tickets = 1
    my_numbers = ["8561"]
    winners = ["8456", "1115", "6476", "8561", "9494", "1348", "3293", "4363", "8627", "5520"]
    assert_equal(["8561"], how_many_match(my_numbers, winners))
  end
  def test_3_for_a_match_1_ticket
    tickets = 1
    my_numbers = ["4862"]
    winners = ["7850", "1425", "6472", "4074", "4864", "1321", "3293", "4363", "8627", "5520"]
    assert_equal(0, how_many_match(my_numbers, winners))
  end
  def test_1_for_a_match_2_tickets
    tickets = 1
    my_numbers = ["2846", "9794"]
    winners = ["7850", "1425", "6472", "2846", "9794", "1321", "3293", "4363", "8627", "5520"]
    assert_equal(["2846", "9794"], how_many_match(my_numbers, winners))
  end
  def test_2_for_a_match_2_tickets
    tickets = 1
    my_numbers = ["1450", "7765"]
    winners = ["7850", "1425", "6472", "2846", "9794", "1321", "3293", "4363", "8627", "5520"]
    assert_equal(0, how_many_match(my_numbers, winners))
  end
  def test_1_for_a_match_3_tickets
    tickets = 1
    my_numbers = ["1321", "1458", "3275"]
    winners = ["7850", "1425", "6472", "2846", "9794", "1321", "3293", "4363", "8627", "5520"]
    assert_equal(["1321"], how_many_match(my_numbers, winners))
  end
  def test_2_for_a_match_3_tickets
    tickets = 1
    my_numbers = ["1321", "1425", "4363"]
    winners = ["7850", "1425", "6472", "2846", "9794", "1321", "3293", "4363", "8627", "5520"]
    assert_equal(["1321", "1425", "4363"], how_many_match(my_numbers, winners))
  end
  def test_1_for_a_match_5_tickets
    tickets = 1
    my_numbers = ["7850", "1456", "6472", "2486", "9594"]
    winners = ["7850", "1425", "6472", "2846", "9794", "1321", "3293", "4363", "8627", "5520"]
    assert_equal(["7850", "6472"], how_many_match(my_numbers, winners))
  end
  def test_2_for_a_match_5_tickets
    tickets = 1
    my_numbers = ["1321", "3293", "4363", "8627", "5520"]
    winners = ["7850", "1425", "6472", "2846", "9794", "1321", "3293", "4363", "8627", "5520"]
    assert_equal(["1321", "3293", "4363", "8627", "5520"], how_many_match(my_numbers, winners))
  end
  def test_3_for_a_match_5_tickets
    tickets = 1
    my_numbers = ["1341", "3263", "8363", "5547", "4560"]
    winners = ["7850", "1425", "6472", "2846", "9794", "1321", "3293", "4363", "8627", "5520"]
    assert_equal(0, how_many_match(my_numbers, winners))
  end
  def test_for_huge_numbers
    tickets = 1
    my_numbers = ["124568741", "78145123145650"]
    winners = ["78145123145650", "1464612", "6145472", "248564846", "955794", "21", "3245693", "4555363", "845627", "5520"]
    assert_equal(["78145123145650"], how_many_match(my_numbers, winners))
  end
end
