-- Enum and Set Types

-- ENUM('small', 'medium', 'large')    its better to avoid using ENUM because its expensive to change
-- the better approach is to have separate tables ( the payment_methods table for example )

-- SET(...)  its better to avoid using it