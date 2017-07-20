.class public Lsiso/vt/VideoTelephonyData;
.super Ljava/lang/Object;
.source "VideoTelephonyData.java"


# instance fields
.field private mDatalen:I

.field private mObjectmode:I

.field private mProdNum:Ljava/lang/String;

.field private mUserData:Ljava/lang/String;

.field private mVerNum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsiso/vt/VideoTelephonyData;->mProdNum:Ljava/lang/String;

    iput-object p2, p0, Lsiso/vt/VideoTelephonyData;->mVerNum:Ljava/lang/String;

    iput-object p3, p0, Lsiso/vt/VideoTelephonyData;->mUserData:Ljava/lang/String;

    iput p4, p0, Lsiso/vt/VideoTelephonyData;->mDatalen:I

    iput p5, p0, Lsiso/vt/VideoTelephonyData;->mObjectmode:I

    return-void
.end method


# virtual methods
.method public getObjectMode(I)V
    .locals 0

    iput p1, p0, Lsiso/vt/VideoTelephonyData;->mObjectmode:I

    return-void
.end method

.method public setDataLen(I)V
    .locals 0

    iput p1, p0, Lsiso/vt/VideoTelephonyData;->mDatalen:I

    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsiso/vt/VideoTelephonyData;->mUserData:Ljava/lang/String;

    return-void
.end method
