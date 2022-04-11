/*
Copyright (C) 2022 The Falco Authors.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

#include "falco_common.h"

static vector<string> priority_names = {
	"Emergency",
	"Alert",
	"Critical",
	"Error",
	"Warning",
	"Notice",
	"Informational",
	"Debug"
};

bool falco_common::parse_priority(string v, priority_type& out)
{
	for (size_t i = 0; i < priority_names.size(); i++)
	{
		// note: for legacy reasons, "Info" and "Informational" has been used
		// interchangeably and ambiguously, so this is the only edge case for
		// which we can't apply strict equality check
		if (!strcasecmp(v.c_str(), priority_names[i].c_str())
			|| (i == PRIORITY_INFORMATIONAL && !strcasecmp(v.c_str(), "info")))
		{
			out = (priority_type) i;
			return true;
		}
	}
	return false;
}

falco_common::priority_type falco_common::parse_priority(string v)
{
	falco_common::priority_type out;
	if (!parse_priority(v, out))
	{
		throw falco_exception("Unknown priority value: " + v);
	}
	return out;
}

bool falco_common::format_priority(priority_type v, string& out, bool shortfmt)
{
	if ((size_t) v < priority_names.size())
	{
		if (v == PRIORITY_INFORMATIONAL && shortfmt)
		{
			out = "Info";
		}
		else
		{
			out = priority_names[(size_t) v];
		}
		return true;
	}
	return false;
}

string falco_common::format_priority(priority_type v, bool shortfmt)
{
	string out;
	if(!format_priority(v, out, shortfmt))
	{
		throw falco_exception("Unknown priority enum value: " + to_string(v));
	}
	return out;
}