select
    id AS payment_id,
    orderid AS order_id,
    paymentmethod AS payment_method,
    status,

    --amount is stored in cents, convert it to dollars
    amount / 100 as amount,
    created AS created_at

from raw.stripe.payment