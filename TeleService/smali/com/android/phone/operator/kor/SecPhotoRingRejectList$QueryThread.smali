.class Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;
.super Ljava/lang/Thread;
.source "SecPhotoRingRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/kor/SecPhotoRingRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;


# direct methods
.method private constructor <init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;-><init>(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    iget-object v0, v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    const/16 v0, 0x64

    iput v0, v10, Landroid/os/Message;->what:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

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

    const-string/jumbo v0, "SecPhotoRingRejectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPhotoringRejectItemList.size(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v4}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get4(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get4(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_5

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get4(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;

    iget-object v0, v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "display_name"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-wrap0(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get4(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;->contact_name:Ljava/lang/String;

    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v11, :cond_2

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get0()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get4(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;

    iget-object v0, v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    invoke-static {v0}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get4(Lcom/android/phone/operator/kor/SecPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;

    invoke-static {}, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->-get0()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$PhotoringRejectItem;->contact_name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x1

    goto :goto_1

    :catch_0
    move-exception v8

    const-string/jumbo v0, "SecPhotoRingRejectList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    iget-object v0, p0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/SecPhotoRingRejectList;

    iget-object v0, v0, Lcom/android/phone/operator/kor/SecPhotoRingRejectList;->mHandler:Landroid/os/Handler;

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
