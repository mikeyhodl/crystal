lib LibC
  struct RUsage
    ru_utime : Timeval
    ru_stime : Timeval
    ru_maxrss : Long
    ru_ixrss : Long
    ru_idrss : Long
    ru_isrss : Long
    ru_minflt : Long
    ru_majflt : Long
    ru_nswap : Long
    ru_inblock : Long
    ru_oublock : Long
    ru_msgsnd : Long
    ru_msgrcv : Long
    ru_nsignals : Long
    ru_nvcsw : Long
    ru_nivcsw : Long
  end

  RUSAGE_SELF     =  0
  RUSAGE_CHILDREN = -1

  fun getrusage(__who : Int, __usage : RUsage*) : Int

  alias RlimT = ULongLong

  struct Rlimit
    rlim_cur : RlimT
    rlim_max : RlimT
  end

  RLIMIT_NOFILE = 7

  fun getrlimit(resource : Int, rlim : Rlimit*) : Int
end
