# coding: utf-8

"""
    MailBaby Email Delivery and Management Service API

    **Send emails fast and with confidence through our easy to use [REST](https://en.wikipedia.org/wiki/Representational_state_transfer) API interface.** # Overview This is the API interface to the [Mail Baby](https//mail.baby/) Mail services provided by [InterServer](https://www.interserver.net). To use this service you must have an account with us at [my.interserver.net](https://my.interserver.net). # Authentication In order to use most of the API calls you must pass credentials from the [my.interserver.net](https://my.interserver.net/) site. We support several different authentication methods but the preferred method is to use the **API Key** which you can get from the [Account Security](https://my.interserver.net/account_security) page. 

    The version of the OpenAPI document: 1.1.0
    Contact: support@interserver.net
    Generated by OpenAPI Generator (https://openapi-generator.tech)

    Do not edit the class manually.
"""  # noqa: E501


from __future__ import annotations
import pprint
import re  # noqa: F401
import json


from typing import List
from pydantic import BaseModel, Field, StrictInt, conlist
from openapi_client.models.mail_log_entry import MailLogEntry

class MailLog(BaseModel):
    """
    Mail log records
    """
    total: StrictInt = Field(..., description="total number of mail log entries")
    skip: StrictInt = Field(..., description="number of emails skipped in listing")
    limit: StrictInt = Field(..., description="number of emails to return")
    emails: conlist(MailLogEntry) = Field(...)
    __properties = ["total", "skip", "limit", "emails"]

    class Config:
        """Pydantic configuration"""
        allow_population_by_field_name = True
        validate_assignment = True

    def to_str(self) -> str:
        """Returns the string representation of the model using alias"""
        return pprint.pformat(self.dict(by_alias=True))

    def to_json(self) -> str:
        """Returns the JSON representation of the model using alias"""
        return json.dumps(self.to_dict())

    @classmethod
    def from_json(cls, json_str: str) -> MailLog:
        """Create an instance of MailLog from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        # override the default output from pydantic by calling `to_dict()` of each item in emails (list)
        _items = []
        if self.emails:
            for _item in self.emails:
                if _item:
                    _items.append(_item.to_dict())
            _dict['emails'] = _items
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> MailLog:
        """Create an instance of MailLog from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return MailLog.parse_obj(obj)

        _obj = MailLog.parse_obj({
            "total": obj.get("total"),
            "skip": obj.get("skip"),
            "limit": obj.get("limit"),
            "emails": [MailLogEntry.from_dict(_item) for _item in obj.get("emails")] if obj.get("emails") is not None else None
        })
        return _obj

