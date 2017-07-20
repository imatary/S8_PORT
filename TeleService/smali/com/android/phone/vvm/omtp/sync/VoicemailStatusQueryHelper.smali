.class public Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;
.super Ljava/lang/Object;
.source "VoicemailStatusQueryHelper.java"


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mSourceUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "configuration_state"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "notification_channel_state"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "source_package"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/VoicemailContract$Status;->buildSourceUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mSourceUri:Landroid/net/Uri;

    return-void
.end method

.method private isFieldEqualTo(Landroid/telecom/PhoneAccountHandle;II)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_0

    if-nez v8, :cond_1

    :cond_0
    return v10

    :cond_1
    :try_start_0
    const-string/jumbo v3, "phone_account_component_name=? AND phone_account_id=? AND source_package=?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v7, v4, v0

    const/4 v0, 0x1

    aput-object v8, v4, v0

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->mSourceUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, p3, :cond_3

    move v0, v9

    :goto_0
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0

    :cond_3
    move v0, v10

    goto :goto_0

    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    return v10

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method


# virtual methods
.method public isNotificationsChannelActive(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->isFieldEqualTo(Landroid/telecom/PhoneAccountHandle;II)Z

    move-result v0

    return v0
.end method

.method public isVoicemailSourceConfigured(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/phone/vvm/omtp/sync/VoicemailStatusQueryHelper;->isFieldEqualTo(Landroid/telecom/PhoneAccountHandle;II)Z

    move-result v0

    return v0
.end method
