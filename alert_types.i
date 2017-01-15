%{
#include <libtorrent/operations.hpp>
#include <libtorrent/close_reason.hpp>
#include <libtorrent/alert_types.hpp>
%}

%extend libtorrent::save_resume_data_alert {
    entry resume_data() const {
        libtorrent::entry resume_data;
        resume_data = *self->resume_data.get();
        return resume_data;
    }
}
%ignore libtorrent::save_resume_data_alert::resume_data;

%include <libtorrent/operations.hpp>
%include <libtorrent/close_reason.hpp>
%include <libtorrent/alert_types.hpp>
