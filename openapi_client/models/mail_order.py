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


from typing import Optional
from pydantic import BaseModel, Field, StrictInt, StrictStr

class MailOrder(BaseModel):
    """
    A mail order record
    """
    id: StrictInt = Field(..., description="The ID of the order.")
    status: StrictStr = Field(..., description="The order status.")
    username: StrictStr = Field(..., description="The username to use for this order.")
    comment: Optional[StrictStr] = Field(None, description="Optional order comment.")
    __properties = ["id", "status", "username", "comment"]

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
    def from_json(cls, json_str: str) -> MailOrder:
        """Create an instance of MailOrder from a JSON string"""
        return cls.from_dict(json.loads(json_str))

    def to_dict(self):
        """Returns the dictionary representation of the model using alias"""
        _dict = self.dict(by_alias=True,
                          exclude={
                          },
                          exclude_none=True)
        return _dict

    @classmethod
    def from_dict(cls, obj: dict) -> MailOrder:
        """Create an instance of MailOrder from a dict"""
        if obj is None:
            return None

        if not isinstance(obj, dict):
            return MailOrder.parse_obj(obj)

        _obj = MailOrder.parse_obj({
            "id": obj.get("id"),
            "status": obj.get("status"),
            "username": obj.get("username"),
            "comment": obj.get("comment")
        })
        return _obj


