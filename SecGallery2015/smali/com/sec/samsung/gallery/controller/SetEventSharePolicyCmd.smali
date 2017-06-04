.class public Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "SetEventSharePolicyCmd.java"


# static fields
.field private static final KEY_MAX_FILE_NUMBER:Ljava/lang/String; = "max_number_file"

.field private static final KEY_MAX_FILE_SIZE:Ljava/lang/String; = "max_file_size"

.field private static final KEY_MAX_MEMBER:Ljava/lang/String; = "max_member"

.field private static final TAG:Ljava/lang/String; = "SetEventSharePolicyCmd"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private SetEventSharePolicy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string/jumbo v5, "expired_time"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "expired_time"

    invoke-static {v5, v10, v8, v9}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "max_member_per_day"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "max_member_per_day"

    invoke-static {v5, v10, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "max_files_per_day"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "max_files_per_day"

    invoke-static {v5, v10, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "max_channel_files"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "max_channel_files"

    invoke-static {v5, v10, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "max_file_size"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-wide/16 v6, 0x78

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {p2, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "max_file_size"

    invoke-static {v5, v10, v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "SetEventSharePolicyCmd"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "max_channel_number"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "max_channel_number"

    invoke-static {v5, v10, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v5, "max_channel_member"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "max_channel_member"

    invoke-static {v5, v10, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "appid"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "appid"

    invoke-static {v5, v10, p2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v5, "is_available_web"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "is_available_web"

    invoke-static {v5, v10, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private saveEventSharePolicy(Landroid/os/Bundle;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "SetEventSharePolicyCmd"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->SetEventSharePolicy(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->startSetPolicyToCMHActivity()V

    return-void
.end method

.method private startSetPolicyToCMHActivity()V
    .locals 6

    const-string/jumbo v1, "SetEventSharePolicyCmd"

    const-string/jumbo v2, "startSetPolicyToCMHActivity"

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.cmh.eventpolicy"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "max_member"

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "max_channel_member"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "max_number_file"

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "max_channel_files"

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "max_file_size"

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "max_file_size"

    const-wide/16 v4, 0x78

    invoke-static {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 3

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Landroid/content/Context;

    iput-object v2, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    aget-object v0, v1, v2

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/controller/SetEventSharePolicyCmd;->saveEventSharePolicy(Landroid/os/Bundle;)V

    goto :goto_0
.end method
