.class Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;
.super Ljava/lang/Thread;
.source "AutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/AutoRejectVideoCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;-><init>(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    const/16 v0, 0x64

    iput v0, v10, Landroid/os/Message;->what:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-wrap0(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v9, 0x1

    :goto_0
    const-string/jumbo v0, "LOG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QueryThread start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get6(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_6

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get6(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "display_name"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get6(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->contact_name:Ljava/lang/String;

    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v11, :cond_2

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get1(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get6(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v0}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get6(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;

    iget-object v3, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    invoke-static {v3}, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->-get1(Lcom/android/phone/callsettings/AutoRejectVideoCallList;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$AutoRejectItem;->contact_name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    :catch_0
    move-exception v8

    const-string/jumbo v0, "AutoRejectVideoCallList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RuntimeException is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectVideoCallList$QueryThread;->this$0:Lcom/android/phone/callsettings/AutoRejectVideoCallList;

    iget-object v0, v0, Lcom/android/phone/callsettings/AutoRejectVideoCallList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v0, "LOG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "QueryThread end: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method
