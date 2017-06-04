.class public Lcom/samsung/android/app/omcagent/db/OmcPref$RETRY_RESOURCE;
.super Ljava/lang/Object;
.source "OmcPref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/db/OmcPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RETRY_RESOURCE"
.end annotation


# static fields
.field private static final NONE:I = 0x0

.field private static final RESOURCE_RETRY_COUNT:Ljava/lang/String; = "Resource.RetryCount"

.field private static final RES_RETRY_STATE:Ljava/lang/String; = "OMC.Res.Retry.State"

.field private static final RETRY:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
