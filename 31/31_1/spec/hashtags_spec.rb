require 'hashtags'

describe 'hashtags' do
  it 'Захватывается 1 хэштег' do
    expect(hashtags('words with #tags')).to eq %w(#tags)
  end

  it 'Захватывается несколько хэштегов' do
    expect(hashtags('#words with #tags')).to eq %w(#words #tags)
  end

  it 'Захватывается хэштег на русском' do
    expect(hashtags('слова с #тегами')).to eq %w(#тегами)
  end

  it 'Захватывается хэштег с подчеркиваниями' do
    expect(hashtags('words #with_tags')).to eq %w(#with_tags)
  end

  it 'Захватывается хэштег с минусами' do
    expect(hashtags('words #with-tags')).to eq %w(#with-tags)
  end

  it 'Не захватывается знак вопроса' do
    expect(hashtags('words #with? tags')).to eq %w(#with)
  end

  it 'Не захватывается восклицательный знак' do
    expect(hashtags('words #with! tags')).to eq %w(#with)
  end
end
