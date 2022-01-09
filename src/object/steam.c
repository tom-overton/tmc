#define NENT_DEPRECATED
#include "entity.h"
#include "screen.h"
#include "player.h"
#include "room.h"
#include "asm.h"

extern u8 gUnk_08123484[];

typedef struct {
    Entity base;
    u8 unk_0x68;
} SteamEntity;

void Steam(Entity* _this) {
    SteamEntity* this = (SteamEntity*)_this;
    u32 action = super->action;
    s8* ptr;
    u32 type;

    if (action == 0) {
        super->action = 1;
        super->spriteSettings.draw = 1;
        super->spriteRendering.alphaBlend = 1;
        super->actionDelay = 1;
        super->field_0xf = Random() & 0xf;
        this->unk_0x68 = action;
        super->collisionLayer = 2;
        ResolveCollisionLayer(super);
        gScreen.controls.layerFXControl = 0xbd << 6;
        if (super->type == 0) {
            gScreen.controls.alphaBlend = 0x60a;
        } else {
            gScreen.controls.alphaBlend = 0x808;
        }
    }

    type = super->type;
    ptr = &this->unk_0x68;
    if (type != 0) {
        if (gPlayerEntity.x.HALF.HI - gRoomControls.origin_x > (0xf8 << 1)) {
            if (*ptr < 0x40) {
                (*ptr)++;
            }
        } else {
            if (*ptr > 0) {
                (*ptr)--;
            }
        }
    }

    if (--super->actionDelay == 0) {
        super->actionDelay = 8;
        super->field_0xf = (super->field_0xf + 1) & 0xf;
    }

    super->spriteOffsetX = gUnk_08123484[super->field_0xf];
    super->spriteOffsetY = gUnk_08123484[super->field_0xf] + *ptr;
}