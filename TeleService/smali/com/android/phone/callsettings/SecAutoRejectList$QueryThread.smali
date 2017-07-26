.class Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;
.super Ljava/lang/Thread;
.source "SecAutoRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;


# direct methods
.method private constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;-><init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v14

    const/16 v2, 0x64

    iput v2, v14, Landroid/os/Message;->what:I

    const/4 v9, 0x0

    const/16 v19, 0x0

    const/4 v12, 0x0

    const-string/jumbo v2, "SecAutoRejectList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QueryThread start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get3(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_5

    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get3(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v2, "display_name"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string/jumbo v2, "number"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-virtual {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    const/4 v13, 0x0

    const-string/jumbo v2, "number"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get3(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v0, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x0

    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_2

    const-string/jumbo v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    cmp-long v2, v6, v20

    if-nez v2, :cond_1

    const/4 v13, 0x1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    if-nez v13, :cond_6

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "display_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v11, 0x0

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_9

    if-eqz v11, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_7

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get3(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    const-string/jumbo v2, "SecAutoRejectList"

    const-string/jumbo v5, "Contact number is not equal with reject number"

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v10

    const-string/jumbo v2, "SecAutoRejectList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RuntimeException is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v2, "SecAutoRejectList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "QueryThread end: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void

    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get3(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    goto/16 :goto_4

    :cond_8
    const/16 v19, 0x1

    :cond_9
    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v19, :cond_b

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get0(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get3(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v2}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get3(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/phone/callsettings/SecAutoRejectList$QueryThread;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v5}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get0(Lcom/android/phone/callsettings/SecAutoRejectList;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/phone/callsettings/SecAutoRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method
