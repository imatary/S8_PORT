.class public Lcom/sec/android/gallery3d/data/SecureSource;
.super Lcom/sec/android/gallery3d/data/MediaSource;
.source "SecureSource.java"


# static fields
.field public static final PATH_PREFIX:Ljava/lang/String; = "secure"

.field private static final SECURE_ALBUM:I = 0x0

.field private static final SECURE_NOITEM:I = 0x3

.field private static final SECURE_NOITEM_ITEM:I = 0x4

.field public static final SECURE_NOITEM_SHORTCUT:Ljava/lang/String; = "/secure/noitem"

.field private static final SECURE_NOITEM_SHORTCUT_ITEM:Ljava/lang/String; = "/secure/noitem_item"

.field private static final SECURE_UNLOCK:I = 0x1

.field private static final SECURE_UNLOCK_ITEM:I = 0x2

.field public static final SECURE_UNLOCK_SHORTCUT:Ljava/lang/String; = "/secure/unlock"

.field private static final SECURE_UNLOCK_SHORTCUT_ITEM:Ljava/lang/String; = "/secure/unlock_item"

.field private static final mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/PathMatcher;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/data/SecureSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    sget-object v0, Lcom/sec/android/gallery3d/data/SecureSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/secure/all/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/gallery3d/data/SecureSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/secure/unlock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/gallery3d/data/SecureSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/secure/unlock_item"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/gallery3d/data/SecureSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/secure/noitem"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    sget-object v0, Lcom/sec/android/gallery3d/data/SecureSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    const-string/jumbo v1, "/secure/noitem_item"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/PathMatcher;->add(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 1

    const-string/jumbo v0, "secure"

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MediaSource;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/SecureSource;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 7

    new-instance v2, Lcom/sec/android/gallery3d/data/UnlockImage;

    const-string/jumbo v4, "/secure/unlock_item"

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/SecureSource;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getResourceContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/sec/android/gallery3d/data/UnlockImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Landroid/content/Context;)V

    new-instance v1, Lcom/sec/android/gallery3d/data/NoItemImage;

    const-string/jumbo v4, "/secure/noitem_item"

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/SecureSource;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getResourceContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/sec/android/gallery3d/data/NoItemImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Landroid/content/Context;)V

    sget-object v4, Lcom/sec/android/gallery3d/data/SecureSource;->mMatcher:Lcom/sec/android/gallery3d/data/PathMatcher;

    invoke-virtual {v4, p1}, Lcom/sec/android/gallery3d/data/PathMatcher;->match(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bad path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/SecureSource;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v0

    const-string/jumbo v4, "/secure/unlock"

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v2, Lcom/sec/android/gallery3d/data/SecureAlbum;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/SecureSource;->mApplication:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-direct {v2, p1, v4, v3}, Lcom/sec/android/gallery3d/data/SecureAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Lcom/sec/android/gallery3d/data/MediaItem;)V

    :goto_0
    :pswitch_1
    return-object v2

    :pswitch_2
    new-instance v1, Lcom/sec/android/gallery3d/data/SingleItemAlbum;

    invoke-direct {v1, p1, v2}, Lcom/sec/android/gallery3d/data/SingleItemAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/MediaItem;)V

    move-object v2, v1

    goto :goto_0

    :pswitch_3
    new-instance v2, Lcom/sec/android/gallery3d/data/SingleItemAlbum;

    invoke-direct {v2, p1, v1}, Lcom/sec/android/gallery3d/data/SingleItemAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :pswitch_4
    move-object v2, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
