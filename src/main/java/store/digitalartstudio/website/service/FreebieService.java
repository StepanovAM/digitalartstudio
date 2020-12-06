package store.digitalartstudio.website.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import store.digitalartstudio.website.models.Freebie;
import store.digitalartstudio.website.repository.FreebieRepository;

@Service
public class FreebieService {

	@Autowired private FreebieRepository fRepo;
	
	public Freebie persist(Freebie freebie) {
		return fRepo.save(freebie);
	}
}
