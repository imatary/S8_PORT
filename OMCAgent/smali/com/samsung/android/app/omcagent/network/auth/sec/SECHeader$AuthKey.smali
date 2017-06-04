.class public Lcom/samsung/android/app/omcagent/network/auth/sec/SECHeader$AuthKey;
.super Ljava/lang/Object;
.source "SECHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/network/auth/sec/SECHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthKey"
.end annotation


# static fields
.field public static final AUTH_ID:Ljava/lang/String; = "auth_identifier"

.field public static final DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final SERVER_ID:Ljava/lang/String; = "server_id"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final SPD_SERVICE_TYPE:Ljava/lang/String; = "service_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
