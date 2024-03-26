<template>
    <v-footer :app="!mobile" class="footer" elevation="2">
        <!-- <v-bottom-navigation class="d-block d-sm-none">
            <v-btn value="recent">
                <v-icon>mdi-history</v-icon>

                <span>Recent</span>
            </v-btn>

            <v-btn value="favorites">
                <v-icon>mdi-heart</v-icon>

                <span>Favorites</span>
            </v-btn>

            <v-btn value="nearby">
                <v-icon>mdi-map-marker</v-icon>

                <span>Nearby</span>
            </v-btn>
        </v-bottom-navigation> -->
        <v-content>
            Antoine Moevus 2024-2054.
        </v-content>
    </v-footer>
</template>

<script setup>
import { useDisplay } from 'vuetify';

const {mobile} = useDisplay()
</script>

<style scoped>
.footer {
    text-align: center;
    background-color: #b371df;
    color: white;
}
</style>