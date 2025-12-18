-- Users table
CREATE TABLE IF NOT EXISTS users (
    user_id VARCHAR(50) PRIMARY KEY,
    user_type VARCHAR(20) NOT NULL,  -- 'admin', 'customer', 'employee'
    branch_id VARCHAR(50),
    template_data BLOB,               -- Serialized fingerprint template
    status VARCHAR(20) DEFAULT 'active',  -- 'active', 'inactive', 'blocked'
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Indexes
CREATE INDEX idx_users_branch ON users(branch_id);
CREATE INDEX idx_users_status ON users(status);
CREATE INDEX idx_users_type ON users(user_type);