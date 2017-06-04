.class Lcom/samsung/android/app/omcagent/db/AppPref$SESSION_KEY;
.super Ljava/lang/Object;
.source "AppPref.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/omcagent/db/AppPref;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SESSION_KEY"
.end annotation


# static fields
.field private static final MCC:Ljava/lang/String; = "App.mcc"

.field private static final MNC:Ljava/lang/String; = "App.mnc"

.field private static final TRANSACTION_ID:Ljava/lang/String; = "Report.TransactionId"

.field private static final URL:Ljava/lang/String; = "Report.ResultUrl"

.field private static final VERSION:Ljava/lang/String; = "App.Version"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
