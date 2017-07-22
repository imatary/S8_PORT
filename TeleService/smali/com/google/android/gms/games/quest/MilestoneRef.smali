.class public final Lcom/google/android/gms/games/quest/MilestoneRef;
.super Lcom/google/android/gms/common/data/zzc;
.source "Unknown"

# interfaces
.implements Lcom/google/android/gms/games/quest/Milestone;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method

.method private zzxQ()J
    .locals 2

    const-string/jumbo v0, "initial_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zza(Lcom/google/android/gms/games/quest/Milestone;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public freeze()Lcom/google/android/gms/games/quest/Milestone;
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/quest/MilestoneEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;-><init>(Lcom/google/android/gms/games/quest/Milestone;)V

    return-object v0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->freeze()Lcom/google/android/gms/games/quest/Milestone;

    move-result-object v0

    return-object v0
.end method

.method public getCompletionRewardData()[B
    .locals 1

    const-string/jumbo v0, "completion_reward_data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCurrentProgress()J
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-wide v2, v0

    :cond_0
    :goto_0
    cmp-long v6, v2, v0

    if-ltz v6, :cond_2

    move v6, v4

    :goto_1
    if-nez v6, :cond_3

    const-string/jumbo v2, "MilestoneRef"

    const-string/jumbo v3, "Current progress should never be negative"

    invoke-static {v2, v3}, Lcom/google/android/gms/games/internal/GamesLog;->zzA(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getTargetProgress()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4

    move v2, v4

    :goto_3
    if-nez v2, :cond_1

    const-string/jumbo v0, "MilestoneRef"

    const-string/jumbo v1, "Current progress should never exceed target progress"

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->zzA(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getTargetProgress()J

    move-result-wide v0

    :cond_1
    return-wide v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getTargetProgress()J

    move-result-wide v2

    goto :goto_0

    :pswitch_2
    const-string/jumbo v2, "current_value"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/games/quest/MilestoneRef;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v6, "quest_state"

    invoke-virtual {p0, v6}, Lcom/google/android/gms/games/quest/MilestoneRef;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x6

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->zzxQ()J

    move-result-wide v6

    sub-long/2addr v2, v6

    goto :goto_0

    :cond_2
    move v6, v5

    goto :goto_1

    :cond_3
    move-wide v0, v2

    goto :goto_2

    :cond_4
    move v2, v5

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getEventId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "external_event_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMilestoneId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "external_milestone_id"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    const-string/jumbo v0, "milestone_state"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTargetProgress()J
    .locals 2

    const-string/jumbo v0, "target_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/quest/MilestoneRef;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zza(Lcom/google/android/gms/games/quest/Milestone;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/games/quest/MilestoneEntity;->zzb(Lcom/google/android/gms/games/quest/Milestone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/games/quest/MilestoneRef;->freeze()Lcom/google/android/gms/games/quest/Milestone;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/quest/MilestoneEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/quest/MilestoneEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
