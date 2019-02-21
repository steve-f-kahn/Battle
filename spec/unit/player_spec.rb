require './models/player.rb'

describe Player do
  let(:name) { 'Simon' }
  let(:hp) { 100 }
  let(:player) { Player.new(name: name, hp: hp) }

  context 'given player has been created with name and hp' do
    it 'should return the name when requested' do
      expect(player.name).to eq(name)
    end

    it 'should return the hp when requested' do
      expect(player.hp).to eq(hp)
    end

    describe 'when damaging player' do
      it 'should reduce the hp by specified amount' do
        player.damage(10)

        expect(player.hp).to eq(90)
      end

      it 'should reduce the hp by specified amount' do
        player.damage(5)

        expect(player.hp).to eq(95)
      end
    end
  end
end