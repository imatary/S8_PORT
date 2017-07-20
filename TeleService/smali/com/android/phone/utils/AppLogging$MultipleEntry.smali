.class public Lcom/android/phone/utils/AppLogging$MultipleEntry;
.super Ljava/lang/Object;
.source "AppLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/utils/AppLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultipleEntry"
.end annotation


# instance fields
.field private mExtra:Ljava/lang/String;

.field private mFeature:Ljava/lang/String;

.field private mValue:J


# direct methods
.method static synthetic -get0(Lcom/android/phone/utils/AppLogging$MultipleEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/utils/AppLogging$MultipleEntry;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/phone/utils/AppLogging$MultipleEntry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/utils/AppLogging$MultipleEntry;->mFeature:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/phone/utils/AppLogging$MultipleEntry;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/phone/utils/AppLogging$MultipleEntry;->mValue:J

    return-wide v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/utils/AppLogging$MultipleEntry;->mFeature:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/phone/utils/AppLogging$MultipleEntry;->mExtra:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/phone/utils/AppLogging$MultipleEntry;->mValue:J

    return-void
.end method
