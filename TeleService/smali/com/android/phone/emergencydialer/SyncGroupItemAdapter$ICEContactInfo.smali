.class public Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;
.super Ljava/lang/Object;
.source "SyncGroupItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ICEContactInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo$ContactAsyncQuery;
    }
.end annotation


# instance fields
.field private mId:J

.field private mIsContactDetail:Z

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mOrder:I

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mPhotoId:I

.field final synthetic this$0:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mId:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mPhoto:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public constructor <init>(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;JLjava/lang/String;Ljava/lang/String;II)V
    .locals 8

    iput-object p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mId:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mNumber:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mPhoto:Landroid/graphics/Bitmap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mPhotoId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mOrder:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mIsContactDetail:Z

    iput-wide p2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mId:J

    iput-object p4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mNumber:Ljava/lang/String;

    iput p6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mPhotoId:I

    iput p7, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mOrder:I

    const/4 v0, -0x1

    if-eq p6, v0, :cond_0

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo$ContactAsyncQuery;

    iget-object v1, p1, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo$ContactAsyncQuery;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;Landroid/content/ContentResolver;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const-string/jumbo v1, "data15"

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const-string/jumbo v5, "_id=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v1, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo$ContactAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mId:J

    return-wide v0
.end method

.method public getIsContactDetail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mIsContactDetail:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    iget v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mOrder:I

    return v0
.end method

.method public getPhoto()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mPhoto:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setIsContactDetail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mIsContactDetail:Z

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    iput p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mOrder:I

    return-void
.end method

.method public update(JLjava/lang/String;Ljava/lang/String;II)V
    .locals 9

    const/4 v6, 0x1

    const/4 v1, 0x0

    iput-wide p1, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mId:J

    iput-object p3, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mNumber:Ljava/lang/String;

    iput p6, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mOrder:I

    iget v0, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mPhotoId:I

    if-eq v0, p5, :cond_0

    const/4 v0, -0x1

    if-eq p5, v0, :cond_0

    new-instance v0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo$ContactAsyncQuery;

    iget-object v2, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->this$0:Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;

    iget-object v2, v2, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo$ContactAsyncQuery;-><init>(Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;Landroid/content/ContentResolver;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v5, "data15"

    aput-object v5, v4, v1

    const-string/jumbo v5, "_id=?"

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo$ContactAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput p5, p0, Lcom/android/phone/emergencydialer/SyncGroupItemAdapter$ICEContactInfo;->mPhotoId:I

    return-void
.end method
