.class final Lcom/android/phone/photoring/PhotoRingScreen$PROJECTION_NUMBER;
.super Ljava/lang/Object;
.source "PhotoRingScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoRingScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PROJECTION_NUMBER"
.end annotation


# static fields
.field static final projection:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "display_name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "data1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "photo_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/photoring/PhotoRingScreen$PROJECTION_NUMBER;->projection:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
