$(MAKE) = gmake

simpoint:
	$(MAKE) -C analysiscode
	$(MAKE) -C analysiscode clean
	rm -f *.d

run: simpoint
	./bin/simpoint -loadFVFile ./input/sample.bb -maxK 30 -saveSimpoints ./output/sample.simpoints -saveSimpointWeights ./output/sample.weights

clean:
	$(MAKE) -C analysiscode clean
	rm -f bin/simpoint
	rm -f *.d

.PHONY: clean simpoint


