.class public final Lcom/sec/android/cloudagent/CloudStore$Images;
.super Ljava/lang/Object;
.source "CloudStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cloudagent/CloudStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Images"
.end annotation


# direct methods
.method public static getContentUri()Landroid/net/Uri;
    .locals 1

    const-string/jumbo v0, "content://cloud/data/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
