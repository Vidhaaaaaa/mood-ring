/*
/// Module: mood_contract
module mood_contract::mood_contract;
*/

// For Move coding conventions, see
// https://docs.sui.io/concepts/sui-move-concepts/conventions

module mood_contract::mood_contract {
    use sui::object::{UID};

    struct MoodRing has key {
        id: UID,
        name: String,
        mood_level: u64, //0-100
        last_active: u64,
    }

    public fun mint_mood_ring(account: &signer, name: vector<u8>, current_time: u64): MoodRing {
        let uid = UID::create(account);

        let ring = MoodRing {
            id: uid,
            name: name,
            mood_level: 100,
            lastactive: current_time,
        };

        ring
    }

    public fun update_mood(ring: &mut MoodRing, current_time: u64) {
        let elapsed = current_time - ring.last_active;

        // mood degrades over the activity of user (the more time since last update, the better)
        let decay = if elapsed < 10 { 5 } else { 0 };

        if ring.mood_level > decay {
            ring.mood_level = ring.mood_level - decay;
        } else {
            ring.mood_level = 0;
        }

        ring.last_activite = current_time;
    }

    public fun get_mood(ring: &MoodRing): u8 {
        ring.mood_level
    }
}
