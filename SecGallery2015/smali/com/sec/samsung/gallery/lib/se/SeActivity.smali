.class public Lcom/sec/samsung/gallery/lib/se/SeActivity;
.super Ljava/lang/Object;
.source "SeActivity.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/ActivityInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertFromTranslucent(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->semConvertFromTranslucent(Z)V

    return-void
.end method

.method public convertToTranslucent(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->semConvertToTranslucent(Landroid/app/Activity$SemTranslucentConversionListener;)Z

    return-void
.end method

.method public isOwnerUser(Landroid/app/Activity;)Z
    .locals 3

    const-string/jumbo v1, "activity"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v1

    sget v2, Lcom/sec/samsung/gallery/lib/factory/UserHandleWrapper;->USER_OWNER:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isResumed(Landroid/app/Activity;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->semIsResumed()Z

    move-result v0

    return v0
.end method
