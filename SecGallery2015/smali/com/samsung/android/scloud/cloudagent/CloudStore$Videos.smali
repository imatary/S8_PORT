.class public final Lcom/samsung/android/scloud/cloudagent/CloudStore$Videos;
.super Ljava/lang/Object;
.source "CloudStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/cloudagent/CloudStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Videos"
.end annotation


# direct methods
.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    const-string/jumbo v0, "content://com.samsung.android.scloud.cloudagent/data/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
