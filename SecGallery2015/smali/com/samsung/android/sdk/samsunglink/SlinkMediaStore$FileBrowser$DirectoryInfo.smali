.class public Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser$DirectoryInfo;
.super Ljava/lang/Object;
.source "SlinkMediaStore.java"

# interfaces
.implements Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser$DirectoryInfoColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectoryInfo"
.end annotation


# static fields
.field public static final PATH:Ljava/lang/String; = "directory_info"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultDirectoryInfoUri(J)Landroid/net/Uri;
    .locals 2

    const-string/jumbo v0, "directory_info"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser;->access$4(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceIdFromUri(Landroid/net/Uri;)J
    .locals 2

    const-string/jumbo v0, "directory_info"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser;->access$1(Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDirectoryIdFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "directory_info"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser;->access$2(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectoryInfoUri(JLjava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-string/jumbo v0, "directory_info"

    invoke-static {v0, p0, p1, p2}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser;->access$3(Ljava/lang/String;JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isDirectoryInfoUri(Landroid/net/Uri;)Z
    .locals 1

    const-string/jumbo v0, "directory_info"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$FileBrowser;->access$0(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
