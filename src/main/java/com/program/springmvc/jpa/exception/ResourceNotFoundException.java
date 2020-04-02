package com.program.springmvc.jpa.exception;

public class ResourceNotFoundException extends Exception{
	private static final long SerialVersionUID = 1L;
	
	public ResourceNotFoundException(Object resourceId) {
		super(resourceId != null ? resourceId.toString() : null);
	}
}
