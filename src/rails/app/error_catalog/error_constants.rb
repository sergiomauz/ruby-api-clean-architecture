ErrorTuple = Data.define(:error_code, :property_name, :error_message)

class ErrorConstants
  GENERIC_00000 = "G00000"

  # Id
  ID_FORMAT00001 = ErrorTuple.new("Id-F00001", "id", "'id' can not be null.")
  ID_FORMAT00002 = ErrorTuple.new("Id-F00002", "id", "'id' must be greater than 0.")

  # Uuid
  UUID_FORMAT00001 = ErrorTuple.new("Uuid-F00001", "id", "'id' must be a valid UUID.")

  # Ids
  IDS_FORMAT00001 = ErrorTuple.new("Ids-F00001", "ids", "List must not be null.")
  IDS_FORMAT00002 = ErrorTuple.new("Ids-F00002", "ids", "List must not be empty.")
  IDS_FORMAT00003 = ErrorTuple.new("Ids-F00003", "ids", "List must not have repeated elements.")
  IDS_FORMAT00004 = ErrorTuple.new("Ids-F00004", "ids", "All elements must be greater than 0.")

  # Uuids
  UUIDS_FORMAT00001 = ErrorTuple.new("Uuids-F00001", "ids", "List must not be null.")
  UUIDS_FORMAT00002 = ErrorTuple.new("Uuids-F00002", "ids", "List must not be empty.")
  UUIDS_FORMAT00003 = ErrorTuple.new("Uuids-F00003", "ids", "List must not have repeated elements.")
  UUIDS_FORMAT00004 = ErrorTuple.new("Uuids-F00004", "ids", "All elements must be valids UUID.")

  # BasicSearch
  BASIC_SEARCH_FORMAT00001 = ErrorTuple.new("BasicSearch-F00001", "text_filter", "'text_filter' must have 3 or more characters.")

  # Paginated
  PAGINATED_FORMAT00001 = ErrorTuple.new("Paginated-F00001", "page_size", "'page_size' must be between 0 and 300.")
  PAGINATED_FORMAT00002 = ErrorTuple.new("Paginated-F00002", "current_page", "'current_page' must be greater than 0.")

  # CreateAuthor
  CREATE_AUTHOR_FORMAT00001 = ErrorTuple.new("CreateAuthor-F00001", "name", "'name' must have between 2 and 150 characters.")
  CREATE_AUTHOR_FORMAT00002 = ErrorTuple.new("CreateAuthor-F00002", "country", "'country' must have 2 characters.")
  CREATE_AUTHOR_CONTENT00001 = ErrorTuple.new("CreateAuthor-C00001", "name", "This name already exists. Try another name.")
end
