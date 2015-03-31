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

data RecordExistsAction = Update | UpdateOnly | Replace | ReplaceOnly | CreateOnly

data GenerationPolicy = None | ExpectGenEqual | ExpectGenGt

data CommitLevel = CommitAll | CommitMaster

data Generation = Generation Int

data Expiration = Expiration Int

data WritePolicy = WritePolicy {
    priority :: Priority
  , consistencyLevel :: consistencyLevel  -- needed? we have commit level
  , timeout :: Timeout
  , maxRetries :: MaxRetries
  , sleepBetweenRetries :: SleepBetweenRetries
  , sendKey :: Boolean
  , recordExistsAction :: RecordExistsAction
  , generationPolicy :: GenerationPolicy
  , commitLevel :: CommitLevel
  , generation :: Generation
  , expiration :: Expiration
}