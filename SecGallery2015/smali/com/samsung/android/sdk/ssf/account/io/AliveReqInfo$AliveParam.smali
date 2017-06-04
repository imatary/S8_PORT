.class public Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;
.super Ljava/lang/Object;
.source "AliveReqInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AliveParam"
.end annotation


# instance fields
.field private duid:Ljava/lang/String;

.field private sids:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDeviceUniqueId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;->duid:Ljava/lang/String;

    return-void
.end method

.method public setServiceIDs([I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/account/io/AliveReqInfo$AliveParam;->sids:[I

    return-void
.end method
