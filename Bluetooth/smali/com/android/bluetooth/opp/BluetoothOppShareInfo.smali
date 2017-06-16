.class public Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
.super Ljava/lang/Object;
.source "BluetoothOppShareInfo.java"


# instance fields
.field public mConfirm:I

.field public mCurrentBytes:J

.field public mDestination:Ljava/lang/String;

.field public mDirection:I

.field public mFilename:Ljava/lang/String;

.field public mHint:Ljava/lang/String;

.field public mId:I

.field public mMediaScanned:Z

.field public mMimetype:Ljava/lang/String;

.field public mStatus:I

.field public mTimestamp:J

.field public mTotalBytes:J

.field public mUri:Landroid/net/Uri;

.field public mVisibility:I


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIJJJZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mHint:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMimetype:Ljava/lang/String;

    iput p6, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    iput-object p7, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDestination:Ljava/lang/String;

    iput p8, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    iput p9, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    iput p10, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    iput-wide p11, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTotalBytes:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mCurrentBytes:J

    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mTimestamp:J

    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mMediaScanned:Z

    return-void
.end method


# virtual methods
.method public hasCompletionNotification()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusCompleted(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mVisibility:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isObsolete()Z
    .locals 2

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v1, 0xc0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isReadyToStart()Z
    .locals 4

    const/16 v3, 0xbe

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    return v1

    :cond_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    return v2
.end method
