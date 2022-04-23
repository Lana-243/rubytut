require 'rspec'
require 'hashtags'

describe 'hashtags' do
  it 'takes one hashtag' do
    expect(hashtags('#hey')).to eq %w(#hey)
  end

  it 'takes multiple hashtags' do
    expect(hashtags('#hey #there #babe')).to eq %w(#hey #there #babe)
  end

  it 'takes Ru hashtag' do
    expect(hashtags('#привет')).to eq %w(#привет)
  end

  it 'takes hashtag with underscore' do
    expect(hashtags('#привет_из_деревни')).to eq %w(#привет_из_деревни)
  end

  it 'takes hashtag with minus' do
    expect(hashtags('#привет-из-деревни')).to eq %w(#привет-из-деревни)
  end

  it 'takes hashtag with minus' do
    expect(hashtags('#привет-из-деревни')).to eq %w(#привет-из-деревни)
  end

  it 'hashtag breaks with ?' do
    expect(hashtags('#ты_кто?-Света')).to eq %w(#ты_кто)
  end

  it 'hashtag breaks with !' do
    expect(hashtags('#hey!how are you?')).to eq %w(#hey)
  end
end
