require 'svg-to-eps'


context 'usage as library' do
  describe 'SVGtoEPS' do
    let(:testfile) { './fixtures/test.svg' }

    describe '.convert' do
      it 'converts to a specified output file' do
        @outfile = './fixtures/outtest.eps'
        File.delete @outfile if File.exists? @outfile
        SVGtoEPS.convert(testfile, @outfile)
        expect(File).to exist(@outfile)
      end

      it 'automatically changes file name extension when not specified' do
        @outfile = './fixtures/test.eps'
        File.delete @outfile if File.exists? @outfile
        SVGtoEPS.convert(testfile)
        expect(File).to exist(@outfile)
      end
    end
  end
end
