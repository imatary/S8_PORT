.class public Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader$HeaderValue;
.super Ljava/lang/Object;
.source "OMCHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/network/cloud/omc/OMCHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderValue"
.end annotation


# static fields
.field private static final ACCEPT_ALL:Ljava/lang/String; = "*, */*"

.field private static final RANGE_BYTES:Ljava/lang/String; = "bytes="

.field private static final USER_AGENT:Ljava/lang/String; = "OMC-Client"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
