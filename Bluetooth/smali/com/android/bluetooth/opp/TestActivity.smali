.class public Lcom/android/bluetooth/opp/TestActivity;
.super Landroid/app/Activity;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/TestActivity$1;,
        Lcom/android/bluetooth/opp/TestActivity$2;,
        Lcom/android/bluetooth/opp/TestActivity$3;,
        Lcom/android/bluetooth/opp/TestActivity$4;,
        Lcom/android/bluetooth/opp/TestActivity$5;,
        Lcom/android/bluetooth/opp/TestActivity$6;,
        Lcom/android/bluetooth/opp/TestActivity$7;
    }
.end annotation


# instance fields
.field public ackRecordListener:Landroid/view/View$OnClickListener;

.field public currentInsert:Ljava/lang/String;

.field public deleteAllRecordListener:Landroid/view/View$OnClickListener;

.field public deleteRecordListener:Landroid/view/View$OnClickListener;

.field public insertRecordListener:Landroid/view/View$OnClickListener;

.field mAckView:Landroid/widget/EditText;

.field mAddressView:Landroid/widget/EditText;

.field public mCurrentByte:I

.field mDeleteView:Landroid/widget/EditText;

.field mInsertView:Landroid/widget/EditText;

.field mMediaView:Landroid/widget/EditText;

.field mUpdateView:Landroid/widget/EditText;

.field public notifyTcpServerListener:Landroid/view/View$OnClickListener;

.field server:Lcom/android/bluetooth/opp/TestTcpServer;

.field public startTcpServerListener:Landroid/view/View$OnClickListener;

.field public updateRecordListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/opp/TestActivity;->mCurrentByte:I

    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$1;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->insertRecordListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$2;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->deleteRecordListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$3;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->updateRecordListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$4;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$4;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->ackRecordListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$5;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$5;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->deleteAllRecordListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$6;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$6;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->startTcpServerListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/bluetooth/opp/TestActivity$7;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/TestActivity$7;-><init>(Lcom/android/bluetooth/opp/TestActivity;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/TestActivity;->notifyTcpServerListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/TestActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/opp/TestActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v10}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v10, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_0

    if-eqz v18, :cond_0

    const-string/jumbo v1, "BluetoothOpp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Get share intent with Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mimetype is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    const v1, 0x7f04000d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->setContentView(I)V

    const v1, 0x7f0e0028

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    const v1, 0x7f0e002a

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    const v1, 0x7f0e002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    const v1, 0x7f0e002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    const v1, 0x7f0e002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    const v1, 0x7f0e002b

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->mUpdateView:Landroid/widget/EditText;

    const v1, 0x7f0e002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->mAckView:Landroid/widget/EditText;

    const v1, 0x7f0e0029

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->mDeleteView:Landroid/widget/EditText;

    const v1, 0x7f0e0025

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->mInsertView:Landroid/widget/EditText;

    const v1, 0x7f0e0027

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->mAddressView:Landroid/widget/EditText;

    const v1, 0x7f0e0026

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->mMediaView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->insertRecordListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v14, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->deleteRecordListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v13, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->updateRecordListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->ackRecordListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->deleteAllRecordListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0e0030

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->startTcpServerListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0e0031

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/TestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/opp/TestActivity;->notifyTcpServerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
