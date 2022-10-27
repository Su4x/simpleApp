package suhaib.simple.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import suhaib.simple.models.Event;

@Service
public class EventSerivce {

	private static int eventsNumber = 4;

	private static List<Event> events = new ArrayList<Event>();

	static {
		events.add(new Event(1, "event1", "10-10-2022", true));
		events.add(new Event(1, "event1", "12-10-2022", true));
		events.add(new Event(1, "event1", "14-10-2022", true));
		events.add(new Event(1, "event1", "15-10-2022", true));
	}

	public List<Event> readAllEvents() {
		List<Event> events = new ArrayList<Event>();
		for (Event event : this.events) {

			events.add(event);

		}
		return events;
	}

	public void addEvent(int id, String title, String date, boolean active) {
		events.add(new Event(id, title, date, active));

	}

	public void deleteEvent(int id) {
		Iterator<Event> itrator = events.iterator();
		while (itrator.hasNext()) {
			Event event = itrator.next();
			if (event.getId() == id) {
				itrator.remove();
			}
		}
	}
}
