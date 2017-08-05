.class public Lcom/android/server/LockSettingsStrongAuth;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsStrongAuth$1;,
        Lcom/android/server/LockSettingsStrongAuth$2;
    }
.end annotation


# static fields
.field private static final MSG_REGISTER_TRACKER:I = 0x2

.field private static final MSG_REMOVE_USER:I = 0x4

.field private static final MSG_REQUIRE_STRONG_AUTH:I = 0x1

.field private static final MSG_SET_STRONG_AUTH_FOR_24_HOURS:I = 0x5

.field private static final MSG_UNREGISTER_TRACKER:I = 0x3

.field private static final SEC_FINGERPRINT_UNLOCK_TIMEOUT_MS:J = 0x5265c00L

.field private static final TAG:Ljava/lang/String; = "LockSettings"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mDefaultStrongAuthFlags:I

.field private final mHandler:Landroid/os/Handler;

.field private mPendingUserid:I

.field private final mStrongAuthFor24HoursListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private final mStrongAuthForUser:Landroid/util/SparseIntArray;

.field private final mStrongAuthTrackers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/trust/IStrongAuthTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/LockSettingsStrongAuth;)I
    .locals 1

    iget v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mPendingUserid:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/LockSettingsStrongAuth;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStrongAuth;->handleRemoveUser(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/LockSettingsStrongAuth;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuth(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mPendingUserid:I

    new-instance v0, Lcom/android/server/LockSettingsStrongAuth$1;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsStrongAuth$1;-><init>(Lcom/android/server/LockSettingsStrongAuth;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/LockSettingsStrongAuth$2;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsStrongAuth$2;-><init>(Lcom/android/server/LockSettingsStrongAuth;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthFor24HoursListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getDefaultFlags(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method private handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 6

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v4}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    :try_start_0
    invoke-interface {p1, v3, v2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v4, "LockSettings"

    const-string/jumbo v5, "Exception while adding StrongAuthTracker."

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    return-void
.end method

.method private handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/app/trust/IStrongAuthTracker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleRemoveUser(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    iget v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-direct {p0, v1, p1}, Lcom/android/server/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    :cond_0
    return-void
.end method

.method private handleRequireStrongAuth(II)V
    .locals 3

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    :cond_1
    return-void
.end method

.method private handleRequireStrongAuthOneUser(II)V
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    iget v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-nez p1, :cond_1

    :goto_0
    if-eq v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    :cond_0
    return-void

    :cond_1
    or-int v0, v1, p1

    goto :goto_0
.end method

.method private notifyStrongAuthTrackers(II)V
    .locals 5

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v3, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "LockSettings"

    const-string/jumbo v4, "Exception while notifying StrongAuthTracker."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v3, "LockSettings"

    const-string/jumbo v4, "Removing dead StrongAuthTracker."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthTrackers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    return-void
.end method


# virtual methods
.method public handleStrongAuthFor24Hours(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleStrongAuthFor24Hours("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/LockSettingsStrongAuth;->mPendingUserid:I

    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthFor24HoursListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long/2addr v2, v4

    const-string/jumbo v4, "LockSettings"

    iget-object v5, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthFor24HoursListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v6, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeUser(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportUnlock(I)V
    .locals 2

    const-string/jumbo v0, "LockSettings"

    const-string/jumbo v1, "reportUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthFor24HoursListener:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/LockSettingsStrongAuth;->mStrongAuthFor24HoursListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mPendingUserid:I

    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-ltz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userId must be an explicit user id or USER_ALL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setStrongAuthFor24Hours(I)V
    .locals 3

    const-string/jumbo v0, "LockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStrongAuthFor24Hours("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
