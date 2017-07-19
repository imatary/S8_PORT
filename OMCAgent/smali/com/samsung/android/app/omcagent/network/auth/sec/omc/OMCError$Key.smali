.class public Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCError$Key;
.super Ljava/lang/Object;
.source "OMCError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/network/auth/sec/omc/OMCError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# static fields
.field public static final CODE:Ljava/lang/String; = "error/code"

.field public static final MESSAGE:Ljava/lang/String; = "error/message"

.field public static final RETRY:Ljava/lang/String; = "error/retry"

.field public static final TEMP_BASE_URI:Ljava/lang/String; = "error/responseURI"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
