module Database.Aerospike.Policies

where

data Priority = Default | Low | Medium | High

data ConsistencyLevel = One | All

data Timeout = Timeout Int

data MaxRetries = MaxRetries Int

data SleepBetweenRetries = SleepBetweenRetries Int

data ReadPolicy = ReadPolicy {
  priority :: Priority
  , consistencyLevel :: ConsistencyLevel
  , timeout :: Timeout
  , maxRetries :: MaxRetries
  , sleepBetweenRetries :: SleepBetweenRetries
  , sendKey :: Boolean
}

defaultReadPolicy = ReadPolicy {
  priority = Default
  , consistencyLevel = One
  , timeout = Timeout 0
  , maxRetries = MaxRetries 1
  , sleepBetweenRetries = SleepBetweenRetries 500
  , sendKey = False
}
