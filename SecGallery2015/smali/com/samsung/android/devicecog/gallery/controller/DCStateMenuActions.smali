.class public Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;
.super Ljava/lang/Object;
.source "DCStateMenuActions.java"


# static fields
.field private static final MENU_ACTION_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v7, 0x7f120293

    const v6, 0x7f120292

    const v5, 0x7f12028b

    const v4, 0x7f120275

    const v3, 0x7f1202a9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "SearchView"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "DeletePopUp"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Delete albums"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "DeletePopupForBurstViewer"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "RecycleBinPopUp"

    const v2, 0x7f1202c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "CopyToAlbum"

    const v2, 0x7f12027c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "MoveToAlbum"

    const v2, 0x7f12027d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "RelatedImage"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Details"

    const v2, 0x7f1202a1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "SlideShow"

    const v2, 0x7f1202aa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "AddToStory"

    const v2, 0x7f1202c5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "MoveToKNOX"

    const v2, 0x7f120277

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "CreateAlbum"

    const v2, 0x7f120279

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "CrossContactSinglePickFromSetAsContact"

    const v2, 0x7f1202ab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "CrossContactSinglePickFromAddMember"

    const v2, 0x7f1202d5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Remove"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "ContactUs"

    const v2, 0x7f12027b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Settings"

    const v2, 0x7f12027a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Restore"

    const v2, 0x7f1202c7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Print"

    const v2, 0x7f12027e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Download"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "DOWNLOAD_SHARED_STORY_CONTENTS"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "RemoveFromStory"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "RemoveFromStoryForDetailView"

    const v2, 0x7f1202a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "Help"

    const v2, 0x7f12028d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumHidePopUp"

    const v2, 0x7f120283

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "AlbumShowPopUp"

    const v2, 0x7f120284

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "CrossSendToReminder"

    const v2, 0x7f1202cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "SaveImage"

    const v2, 0x7f120112

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "AddTag"

    const v2, 0x7f1202c6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "DOWNLOAD_CLOUD_CONTENT_IN_CLOUD_VIEW"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "DOWNLOAD_CLOUD_CONTENT_IN_PICTURES"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "DOWNLOAD_CLOUD_CONTENT_IN_ALBUM_THUMBNAILS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "DOWNLOAD_CLOUD_CONTENT_IN_DETAIL_VIEW"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "RemoveFromResult"

    const v2, 0x7f1202d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "VerizonCloud"

    const v2, 0x7f12028a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static get(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getStateIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/devicecog/gallery/controller/DCStateMenuActions;->MENU_ACTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
