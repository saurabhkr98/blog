module Entity
  class OrganizationCreateRequest < T::Struct
    const :name, String
    const :active, T::Boolean
    const :founding_year, Integer
  end
end
