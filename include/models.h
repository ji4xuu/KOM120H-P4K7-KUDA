#ifndef MODELS_H
#define MODELS_H
#include <string>
#include <vector>

struct User {
    int id;
    std::string email;
    std::string name;
    std::string password_hash;
    std::string role;
    std::string created_at;
};

struct Event {
    int id;
    std::string title;
    std::string description;
    std::string start_date;
    std::string end_date;
    std::string registration_start;
    std::string registration_end;
    int quota;
    bool is_paid;
    std::string type;
    std::string status; 
    std::string created_at;
};

struct WorkshopDetails {
    int event_id;
    std::string speaker;
    std::string location;
};

struct TrainingDetails {
    int event_id;
    std::string material_link;
    int duration;
};

struct Registration {
    int id;
    int user_id;
    int event_id;
    std::string status; 
    std::string payment_status;
    std::string created_at;
};

struct VerificationQueueEntry {
    int id;
    int registration_id;
    int admin_id;
    std::string action;
    std::string processed_at;
};

#endif // MODELS_H